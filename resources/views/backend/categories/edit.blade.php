@extends('adminpanel')

@section('breadcrumbs')
    <li>
        <i class="icon-home home-icon"></i>
        <a href="{{ $url }}/">Головна</a>
        <span class="divider">
            <i class="icon-angle-right arrow-icon"></i>
        </span>
    </li>

   Додати нову

@stop

@section('content')

    <div class="page-content">
        <div class="page-header position-relative">
            <h1>
                Додати нову категорію
            </h1>
        </div><!--/.page-header-->
        <div class="row-fluid">
            <div class="span12">
                <!--PAGE CONTENT BEGINS-->
                <form class="form-horizontal" id="resource-form" method="POST" action="" />
                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Link</label>
                        <div class="controls">
                            <input type="text" id="form-field-1" name="link" @if(isset($admin_category)) value='{{$admin_category->link}}'@endif  />
                        </div>
                    </div>
                    <div class="space-12"></div>
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="tabbable">
                                <ul class="nav nav-tabs" id="myTab2">
                                    @foreach($langs as $lang)
                                        <li @if(($lang->lang) == 'ua') class="active" @endif >
                                            <a data-toggle="tab" href="#{{$lang->lang}}">{{$lang->lang}}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                            <div class="tab-content">
                                @foreach($langs as $lang)
                                    <div id="{{$lang->lang}}" @if(($lang->lang) == 'ua') class="tab-pane in active" @else class="tab-pane" @endif>

                                        <div class="control-group">
                                            <label class="control-label" for="form-field-3">Назва категорії</label>
                                            <div class="controls">
                                                <input type="text" name="title_{{$lang->lang}}" value='@if(isset($admin_category)){{ $admin_category->getTranslate('name', $lang->lang) }}@endif' id="form-field-3" placeholder="Назва категорії" />
                                            </div>
                                        </div>

                                        <h4 class="header blue clearfix">Короткий опис</h4>
                                        <div class="control-group">
                                            <textarea name="short_description_{{$lang->lang}}"class="span12" id="form-field-8" placeholder="Короткий опис категорії">@if(isset($admin_category)){{ $admin_category->getTranslate('short_description',$lang->lang) }}@endif</textarea>
                                        </div>

                                        <h4 class="header blue clearfix">Опис</h4>
                                        <div class="control-group">
                                            <textarea name="description_{{$lang->lang}}"class="span12" id="form-field-8" placeholder="Повний опис категорії">@if(isset($admin_category)){{ $admin_category->getTranslate('description',$lang->lang) }}@endif</textarea>
                                        </div>

                                        <h4 class="header blue clearfix">SEO</h4>

                                        <div class="control-group">
                                            <label class="control-label" for="form-field-4">META Title</label>
                                            <div class="controls">
                                                <input type="text" id="form-field-4" name="meta_title_{{$lang->lang}}" value="@if(isset($admin_category)){{ $admin_category->getTranslate('meta_title',$lang->lang) }}@endif"/>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="form-field-5">META Description</label>
                                            <div class="controls">
                                                <input type="text" id="form-field-5" name="meta_description_{{$lang->lang}}" value="@if(isset($admin_category)){{ $admin_category->getTranslate('meta_description',$lang->lang)}}@endif"/>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="form-field-tags">META Keywords</label>

                                            <div class="controls">
                                                <input type="text" name="meta_keywords_{{$lang->lang}}" class="form-field-tags" value="@if(isset($admin_category)){{ $admin_category->getTranslate('meta_keywords',$lang->lang)}}@endif" placeholder="Введіть ключові слова ..." />
                                            </div>
                                        </div>
                                    </div>
                                @endforeach

                                @if(isset($admin_category))
                                    <h4 class="header green clearfix">
                                        Gallery
                                    </h4>
                                    <iframe
                                            frameborder="0"
                                            src="/js/backend/kcfinder/browse.php?type=images&langCode=ru&homedir=/{{$admin_category->id}}/&config=categories"
                                            style="width: 100%; height: 400px"
                                            title="Визуальный файловый браузер"
                                            tabindex="0"
                                            allowtransparency="true">
                                    </iframe>
                                @else
                                    <div class="alert alert-warning">
                                        <button type="button" class="close" data-dismiss="alert">
                                            <i class="icon-remove"></i>
                                        </button>
                                        <strong>Увага!</strong>
                                        Форма завантаження файлів до галереї буде доступною після створення даного запису (при наступному редагуванні)
                                        <br>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="control-group">
                        <label class="control-label">Статус</label>
                        <div class="controls">
                            <div class="row-fluid">
                                <div class="span3">
                                    <label>
                                        <input name='active' type='hidden' value='0'>
                                        <input name='active' class="ace-switch ace-switch-6" type="checkbox" value=1 @if(isset($admin_category) AND $admin_category->active) checked="checked" @endif />
                                        <span class="lbl"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="form-field-2">Пріоритет</label>

                        <div class="controls">
                            <input type="number" id="form-field-2" name="priority" @if(isset($admin_category)) value='{{$admin_category->priority}}' @endif  />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="id-date-picker-1">Дата</label>
                        <div class="controls">
                            <div class="row-fluid input-append">
                                <input class="span2 date-picker" name="date" id="id-date-picker-1" type="text" data-date-format="dd-mm-yyyy" @if(isset($admin_category)) value='{{date('d-m-Y',strtotime($admin_category->date))}}' @endif/>
                                                    <span class="add-on">
                                                        <i class="icon-calendar"></i>
                                                   </span>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                    <div class="form-actions">
                        <button class="btn btn-info resource-save" type="button">
                            <i class="icon-ok bigger-110"></i>
                            Сохранить
                        </button>
                    </div>
                </form>
             <!--PAGE CONTENT ENDS-->
            </div><!--/.span-->
        </div><!--/.row-fluid-->
    </div><!--/.page-content-->
    <div id="token" style="display: none">{{csrf_token()}}</div>
@stop

