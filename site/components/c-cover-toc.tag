<c-cover-toc>
    <div class="c-cover__table-of-content">
        <ol class="u-table-of-content-wrapper">
            <li each = { opts.toc_items }>
                <a class="c-table-of-content__item" href="{ chapter_id }">
                    <div class="u-cover__listNumber-wrapper">
                        <h2 class="t-cover__listNumber"> { chapter_number } </h2>
                        <h2 class="t-cover__listNumber--under">{ chapter_number }</h2>
                    </div>
                    <p class="localized">{ chapter_title }</p>
                </a>
            </li>
        </ol>
    </div>
</c-cover-toc>