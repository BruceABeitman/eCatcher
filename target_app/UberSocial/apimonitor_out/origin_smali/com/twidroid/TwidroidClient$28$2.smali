.class Lcom/twidroid/TwidroidClient$28$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient$28;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient$28;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient$28;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$28$2;->a:Lcom/twidroid/TwidroidClient$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const-string v0, "rate-app"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Answer"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Yes"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$28$2;->a:Lcom/twidroid/TwidroidClient$28;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient$28;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->d(Lcom/twidroid/TwidroidClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$28$2;->a:Lcom/twidroid/TwidroidClient$28;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient$28;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
