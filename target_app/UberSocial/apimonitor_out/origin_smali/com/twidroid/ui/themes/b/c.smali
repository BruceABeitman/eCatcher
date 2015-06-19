.class public Lcom/twidroid/ui/themes/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twidroid/ui/themes/b/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/twidroid/ui/themes/b/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/ui/themes/b/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twidroid/ui/themes/b/c;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/twidroid/ui/themes/b/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/twidroid/ui/themes/b/c;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/twidroid/ui/themes/b/c;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/twidroid/ui/themes/b/c;->h:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/twidroid/ui/themes/b/c;->i:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/themes/b/c;->c:Ljava/lang/String;

    const-string v0, "remote_icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/themes/b/c;->d:Ljava/lang/String;

    const-string v0, "display_icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "display_icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/themes/b/c;->e:Ljava/lang/String;

    :goto_23
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/themes/b/c;->a:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/themes/b/c;->f:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/themes/b/c;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://twidroydfactory.appspot.com/get/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/themes/b/c;->h:Ljava/lang/String;
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_56} :catch_5e

    :goto_56
    iput-boolean p2, p0, Lcom/twidroid/ui/themes/b/c;->i:Z

    return-void

    :cond_59
    :try_start_59
    iget-object v0, p0, Lcom/twidroid/ui/themes/b/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twidroid/ui/themes/b/c;->e:Ljava/lang/String;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_5d} :catch_5e

    goto :goto_23

    :catch_5e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_56
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/themes/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "theme_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/ui/themes/b/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
