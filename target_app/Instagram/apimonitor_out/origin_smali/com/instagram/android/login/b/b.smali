.class public final Lcom/instagram/android/login/b/b;
.super Ljava/lang/Object;
.source "TextLinkUtil.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/text/SpannableStringBuilder;
    .registers 10

    const/4 v6, 0x1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/instagram/android/login/b/c;

    invoke-direct {v1, p2}, Lcom/instagram/android/login/b/c;-><init>(Landroid/net/Uri;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :goto_29
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_29

    :cond_3d
    return-object v0
.end method
