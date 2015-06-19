.class public final Lcom/facebook/systrace/b;
.super Ljava/lang/Object;
.source "Systrace.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/systrace/c;->b()V

    return-void
.end method

.method public static a()V
    .registers 1

    invoke-static {}, Lcom/facebook/systrace/b;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->a()V

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/facebook/systrace/b;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 3

    invoke-static {}, Lcom/facebook/systrace/b;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/facebook/systrace/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/systrace/TraceDirect;->b(Ljava/lang/String;I)V

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/facebook/systrace/b;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/facebook/systrace/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;I)V

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;I)V
    .registers 3

    invoke-static {}, Lcom/facebook/systrace/b;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/systrace/TraceDirect;->c(Ljava/lang/String;I)V

    goto :goto_6
.end method

.method public static b()Z
    .registers 1

    invoke-static {}, Lcom/facebook/systrace/c;->a()Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    const/16 v1, 0x14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_9

    :goto_8
    return-object p0

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method
