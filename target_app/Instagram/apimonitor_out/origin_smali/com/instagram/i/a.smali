.class public final Lcom/instagram/i/a;
.super Ljava/lang/Object;
.source "NewsfeedStoryUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)Landroid/text/SpannableStringBuilder;
    .registers 9

    invoke-virtual {p1, p0}, Lcom/instagram/i/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/instagram/i/d/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v2, p1, p2}, Lcom/instagram/i/a;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)V

    return-object v2
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Lcom/instagram/i/a/a/a;)V
    .registers 8

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/instagram/i/e;

    invoke-direct {v2, p1, v1}, Lcom/instagram/i/e;-><init>(Lcom/instagram/i/a/a/a;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    :cond_26
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)V
    .registers 9

    invoke-virtual {p1}, Lcom/instagram/i/d/c;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/d/h;

    invoke-virtual {v0}, Lcom/instagram/i/d/h;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    sget-object v4, Lcom/instagram/i/g;->a:[I

    invoke-virtual {v0}, Lcom/instagram/i/d/h;->c()Lcom/instagram/i/d/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/i/d/i;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_a4

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled newsfeed story link type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_30
    new-instance v1, Lcom/instagram/i/b;

    invoke-direct {v1, p2, v3}, Lcom/instagram/i/b;-><init>(Lcom/instagram/i/a/a/a;Ljava/lang/String;)V

    :goto_35
    :pswitch_35
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/instagram/i/d/h;->a()I

    move-result v3

    if-ltz v3, :cond_61

    invoke-virtual {v0}, Lcom/instagram/i/d/h;->b()I

    move-result v3

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_61

    invoke-virtual {v0}, Lcom/instagram/i/d/h;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/instagram/i/d/h;->b()I

    move-result v0

    const/16 v4, 0x21

    invoke-virtual {p0, v1, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :pswitch_55
    new-instance v1, Lcom/instagram/i/c;

    invoke-direct {v1, p2, v3}, Lcom/instagram/i/c;-><init>(Lcom/instagram/i/a/a/a;Ljava/lang/String;)V

    goto :goto_35

    :pswitch_5b
    new-instance v1, Lcom/instagram/i/d;

    invoke-direct {v1, p2, v3}, Lcom/instagram/i/d;-><init>(Lcom/instagram/i/a/a/a;Ljava/lang/String;)V

    goto :goto_35

    :cond_61
    const-string v1, "NewsfeedStoryUtil.addLink()"

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "length: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/instagram/i/d/h;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/instagram/i/d/h;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/instagram/common/g/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_9c
    invoke-static {p0, p2}, Lcom/instagram/i/a;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/i/a/a/a;)V

    invoke-static {p0, p2}, Lcom/instagram/i/a;->b(Landroid/text/SpannableStringBuilder;Lcom/instagram/i/a/a/a;)V

    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_30
        :pswitch_55
        :pswitch_5b
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method private static b(Landroid/text/SpannableStringBuilder;Lcom/instagram/i/a/a/a;)V
    .registers 8

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->b(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/instagram/i/f;

    invoke-direct {v2, p1, v1}, Lcom/instagram/i/f;-><init>(Lcom/instagram/i/a/a/a;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    :cond_26
    return-void
.end method
