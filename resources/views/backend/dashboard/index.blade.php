@extends('adminpanel')


@section('breadcrumbs')

    <li class="active">
        <i class="icon-home home-icon"></i>
        Головна
    </li>
@stop

@section('content')
<div class="page-content">
    <div class="row-fluid">
        <div class="span12">
            <!--PAGE CONTENT BEGINS-->
            <div class="row-fluid">
                <h3 class="header smaller lighter blue">Панель керування</h3>
                <div class="row-fluid">
                    <div class="span12 well">
                        Ласкаво просимо в панель керування сайту <strong style="text-transform: uppercase">{{$_SERVER['HTTP_HOST']}} !</strong>
                    </div>
                </div>
                <div class="alert alert-info">
                    <button type="button" class="close" data-dismiss="alert">
                        <i class="icon-remove"></i>
                    </button>
                    <strong>Увага!</strong>
                    Оберіть необхідний для редагування розділ в лівому меню.
                    <br>
                    Для правильного наповнення сайту можна ознайомитися з <a href='{{ asset("upload/instructions/instrukcia-sait.doc") }}' download>Інструкцією <i class="icon-book"></i> </a>
                </div>
            </div>
        </div><!--/.span-->
    </div><!--/.row-fluid-->
</div>


@stop