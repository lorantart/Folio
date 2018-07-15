<c-emailarchive>
    <div class="c-cover__email-archive-list">
        <ol class="u-email-archive-list-wrapper">
            <li each = { opts.eal_items }>
                <a class="c-email-archive-list__item" href="{ email_link }" target="_blank">
                    <p data-i18n="{ email_title }"></p>
                    <time data-i18n="{ email_date }"></time>
                </a>
            </li>
        </ol>
    </div>
</c-emailarchive>