@extends('adminpanel')

@section('breadcrumbs')
    <li>
        <i class="icon-home home-icon"></i>
        <a href="{{ $url }}/">Головна</a>
        <span class="divider">
            <i class="icon-angle-right arrow-icon"></i>
        </span>
    </li>
    @if (isset($admin_category))
        Редагування категорії
    @else
        Додати категорію
    @endif
@stop

@section('content')

    <div class="page-content">
        <div class="page-header position-relative">
            <h1>
                @if (isset($admin_category))
                    Редагувати категорію
                @else
                    Додати категорію
                @endif
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
                    <div class="hr hr-18 dotted hr-double"></div>
                    <h4 class="pink">
                        <i class="icon-hand-right icon-animated-hand-pointer blue"></i>
                        <a href="#modal-table" role="button" class="green" data-toggle="modal"> Table Inside a Modal Box </a>
                    </h4>
                    <div class="hr hr-18 dotted hr-double"></div>
                    <div id="modal-table" class="modal hide fade" tabindex="-1" aria-hidden="true" style="display: none;">
                    <div class="modal-header no-padding">
                        <div class="table-header">
                            <button type="button" class="close" data-dismiss="modal">×</button>
                            Results for "Latest Registered Domains"
                        </div>
                    </div>

                    <div class="modal-body no-padding">
                        <div class="row-fluid">
                            <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                                <thead>
                                <tr>
                                    <th>Domain</th>
                                    <th>Price</th>
                                    <th>Clicks</th>

                                    <th>
                                        <i class="icon-time bigger-110"></i>
                                        Update
                                    </th>
                                </tr>
                                </thead>

                                <tbody>
                                <tr>
                                    <td>
                                        <a href="#">ace.com</a>
                                    </td>
                                    <td>$45</td>
                                    <td>3,330</td>
                                    <td>Feb 12</td>
                                </tr>

                                <tr>
                                    <td>
                                        <a href="#">base.com</a>
                                    </td>
                                    <td>$35</td>
                                    <td>2,595</td>
                                    <td>Feb 18</td>
                                </tr>

                                <tr>
                                    <td>
                                        <a href="#">max.com</a>
                                    </td>
                                    <td>$60</td>
                                    <td>4,400</td>
                                    <td>Mar 11</td>
                                </tr>

                                <tr>
                                    <td>
                                        <a href="#">best.com</a>
                                    </td>
                                    <td>$75</td>
                                    <td>6,500</td>
                                    <td>Apr 03</td>
                                </tr>

                                <tr>
                                    <td>
                                        <a href="#">pro.com</a>
                                    </td>
                                    <td>$55</td>
                                    <td>4,250</td>
                                    <td>Jan 21</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button class="btn btn-small btn-danger pull-left" data-dismiss="modal">
                            <i class="icon-remove"></i>
                            Close
                        </button>

                        <div class="pagination pull-right no-margin">
                            <ul>
                                <li class="prev disabled">
                                    <a href="#">
                                        <i class="icon-double-angle-left"></i>
                                    </a>
                                </li>

                                <li class="active">
                                    <a href="#">1</a>
                                </li>

                                <li>
                                    <a href="#">2</a>
                                </li>

                                <li>
                                    <a href="#">3</a>
                                </li>

                                <li class="next">
                                    <a href="#">
                                        <i class="icon-double-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
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

