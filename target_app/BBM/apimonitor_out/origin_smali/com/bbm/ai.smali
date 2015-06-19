.class final Lcom/bbm/ai;
.super Lcom/bbm/aj;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/aj",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/bbm/af;


# direct methods
.method constructor <init>(Lcom/bbm/af;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ai;->c:Lcom/bbm/af;

    iput-object p3, p0, Lcom/bbm/ai;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/ai;->b:I

    invoke-direct {p0, p1, p2}, Lcom/bbm/aj;-><init>(Lcom/bbm/af;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ai;->c:Lcom/bbm/af;

    iget-object v0, v0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/bbm/ai;->a:Ljava/lang/String;

    iget v2, p0, Lcom/bbm/ai;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbm/ai;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 5

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/bbm/ai;->c:Lcom/bbm/af;

    iget-object v0, v0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ai;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
