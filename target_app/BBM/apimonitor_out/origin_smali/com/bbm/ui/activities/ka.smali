.class final Lcom/bbm/ui/activities/ka;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/jz;

.field private final b:Lcom/bbm/ui/activities/kc;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/jz;Lcom/bbm/ui/activities/kc;Z)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/ka;->a:Lcom/bbm/ui/activities/jz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bbm/ui/activities/ka;->b:Lcom/bbm/ui/activities/kc;

    iput-boolean p3, p0, Lcom/bbm/ui/activities/ka;->c:Z

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, -0x1

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    goto :goto_12

    :cond_21
    sget-object v1, Lcom/bbm/ui/activities/jw;->a:[I

    iget-object v2, p0, Lcom/bbm/ui/activities/ka;->b:Lcom/bbm/ui/activities/kc;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/kc;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_80

    :goto_2e
    iget-boolean v1, p0, Lcom/bbm/ui/activities/ka;->c:Z

    if-nez v1, :cond_12

    neg-int v0, v0

    goto :goto_12

    :pswitch_34
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_2e

    :pswitch_41
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_2e

    :pswitch_56
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/b/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/b/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_2e

    :pswitch_6b
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_2e

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_34
        :pswitch_41
        :pswitch_56
        :pswitch_6b
    .end packed-switch
.end method
