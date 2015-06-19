.class final Lcom/bbm/ui/e/h;
.super Ljava/lang/Object;
.source "ChannelPostMessageHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/g;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/g;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/h;->a:Lcom/bbm/ui/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/bbm/ui/e/h;->a:Lcom/bbm/ui/e/g;

    invoke-static {v0}, Lcom/bbm/ui/e/g;->a(Lcom/bbm/ui/e/g;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/e/h;->a:Lcom/bbm/ui/e/g;

    invoke-static {v1}, Lcom/bbm/ui/e/g;->b(Lcom/bbm/ui/e/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/e/h;->a:Lcom/bbm/ui/e/g;

    invoke-static {v2}, Lcom/bbm/ui/e/g;->c(Lcom/bbm/ui/e/g;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/bbm/ui/e/h;->a:Lcom/bbm/ui/e/g;

    invoke-static {v5}, Lcom/bbm/ui/e/g;->d(Lcom/bbm/ui/e/g;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
