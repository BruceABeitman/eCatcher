.class public final Lcom/instagram/feed/survey/o;
.super Ljava/lang/Object;
.source "SurveyUtil.java"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instagram_ad_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/instagram/feed/survey/b;Lcom/instagram/common/analytics/e;)V
    .registers 6

    sget-object v0, Lcom/instagram/feed/survey/p;->a:[I

    invoke-virtual {p0}, Lcom/instagram/feed/survey/b;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unhandled survey type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "user_sentiment_survey_presented"

    invoke-direct {v1, v2, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v2, "survey_id"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    :goto_2d
    return-void

    :pswitch_2e
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "impression"

    invoke-static {v2}, Lcom/instagram/feed/survey/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v2, "tracking_token"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Lcom/instagram/common/analytics/b;)V

    goto :goto_2d

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_2e
    .end packed-switch
.end method

.method public static a(Lcom/instagram/feed/survey/b;Lcom/instagram/common/analytics/e;Z)V
    .registers 6

    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "survey_primer_response"

    invoke-static {v1}, Lcom/instagram/feed/survey/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v1, "survey_id"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {v0, v1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/feed/survey/b;->f()I

    move-result v1

    sget v2, Lcom/instagram/feed/survey/d;->b:I

    if-ne v1, v2, :cond_2c

    const-string v1, "tracking_token"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    :cond_2c
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    return-void
.end method

.method public static a(Lcom/instagram/feed/survey/b;Lcom/instagram/feed/survey/c;Lcom/instagram/common/analytics/e;)V
    .registers 7

    sget-object v0, Lcom/instagram/feed/survey/p;->a:[I

    invoke-virtual {p0}, Lcom/instagram/feed/survey/b;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_74

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unhandled survey type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "user_sentiment_survey"

    invoke-direct {v1, v2, p2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v2, "survey_id"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "selected_survey_answer"

    invoke-virtual {p1}, Lcom/instagram/feed/survey/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    :goto_37
    return-void

    :pswitch_38
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "survey_response"

    invoke-static {v2}, Lcom/instagram/feed/survey/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v2, "response"

    invoke-virtual {p1}, Lcom/instagram/feed/survey/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "show_primer"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/b;->e()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "survey_id"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "tracking_token"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Lcom/instagram/common/analytics/b;)V

    goto :goto_37

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_15
        :pswitch_38
    .end packed-switch
.end method
