.class Lcom/twidroid/TwidroidClient$28$1;
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

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$28$1;->a:Lcom/twidroid/TwidroidClient$28;

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

    const-string v3, "No"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
