.class final Lcom/facebook/systrace/a;
.super Ljava/lang/Object;
.source "FbSystrace.java"


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/systrace/a;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x79

    invoke-static {p0, v0}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/facebook/systrace/a;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/systrace/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()V
    .registers 1

    invoke-static {}, Lcom/facebook/systrace/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/facebook/systrace/a;->a:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/systrace/a;->a:Z

    const-string v0, "fburl.com/fbsystrace"

    invoke-static {v0}, Lcom/facebook/systrace/b;->b(Ljava/lang/String;)V

    const-string v0, "USE fbsystrace"

    invoke-static {v0}, Lcom/facebook/systrace/b;->b(Ljava/lang/String;)V

    const-string v0, "DO NOT USE systrace"

    invoke-static {v0}, Lcom/facebook/systrace/b;->b(Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    sget-boolean v0, Lcom/facebook/systrace/a;->a:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/facebook/systrace/b;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/systrace/a;->a:Z

    goto :goto_1c
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "0"

    invoke-static {p0, v0}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x7f

    invoke-static {p0, v0}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
