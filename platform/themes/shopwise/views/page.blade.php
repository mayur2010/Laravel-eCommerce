@php Theme::set('pageName', $page->name) @endphp

<div id="app">
    @if ($page->template === 'homepage')
        {!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, BaseHelper::clean($page->content), $page) !!}
    @else
        <div class="section">
            <div class="container">
                {!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, BaseHelper::clean($page->content), $page) !!}
            </div>
        </div>
    @endif
</div>
