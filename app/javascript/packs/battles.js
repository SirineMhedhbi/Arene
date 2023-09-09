$(document).ready(function () {
  function retrieveSelctData (url, select){
    $.ajax({
      url: url,
      method: 'GET',
      dataType: 'json',
      success: function (data) {
        select.empty();
        select.append($('<option>', { value: '', text: 'Sélectionner' }));

        $.each(data, function (key, value) {

          select.append($('<option>', { value: value.id, text: value.name }));
        });

        select.parent().removeClass('d-none');
      },
      error: function () {

        select.parent().addClass('d-none');
      },
    });

  }
  function displayWeaponSelect(characterSelectID, weaponSelectID, shieldSelectID){
    
    const characterSelect = $(characterSelectID);
    const weaponSelect = $(weaponSelectID);
    const shieldSelect = $(shieldSelectID);
  
    characterSelect.on('change', function () {
      retrieveSelctData('/weapons', weaponSelect)
      retrieveSelctData('/shields', shieldSelect)

      if (this.id == 'character1_id'){
        var select = $('#character2_id')
        $.ajax({
          url: `/characters?selectedValue=${this.value}`,
          method: 'GET',
          dataType: 'json',
          success: function (data) {
            select.empty();
            select.append($('<option>', { value: '', text: 'Sélectionner' }));
    
            $.each(data, function (key, value) {
    
              select.append($('<option>', { value: value.id, text: value.name }));
            });
    
            select.parent().removeClass('d-none');
          },
          error: function () {
    
            select.parent().addClass('d-none');
          },
        });
      }
    });

  }
  displayWeaponSelect('#character1_id', '#weapon1_id','#shield1_id' )
  displayWeaponSelect('#character2_id', '#weapon2_id','#shield2_id')
  
  });
  