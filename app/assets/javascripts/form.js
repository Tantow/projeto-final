$('document').ready(function(){
    
    function validateEmail(email) {
        var re = /[a-z]{2,20}\.[a-z]{2,20}\@injunior.com.br/;
        return re.test(String(email).toLowerCase());
    }
    
    $('.register-actions').click(function(e){
        if (!($('#name').val()) || !($('#email').val()) || !($('#password').val()) || !($('#confirmation').val())){
            swal("Preencha todos os campos.", "", "error");
            e.preventDefault();
        }else {
            if ($('#name').val().length < 2) {
                swal("Digite seu nome completo", "", "error");
                e.preventDefault();
            }else if(!(validateEmail($('#email').val()))){
                swal("O email deve ser no formato nome.sobrenome@injunior.com.br", "", "error");
                e.preventDefault();
            }else if($('#password').val().length < 6){
                swal("A senha deve ter pelo menos 6 caracteres.", "", "error");
                e.preventDefault();
            }else if($('#password').val() != $('#confirmation').val()){
                swal("As senhas não correspondem.", "", "error");
                e.preventDefault();
            }
        }
    });
});