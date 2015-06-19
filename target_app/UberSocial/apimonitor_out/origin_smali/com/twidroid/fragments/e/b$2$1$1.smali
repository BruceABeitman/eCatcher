.class Lcom/twidroid/fragments/e/b$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/b$2$1;->a(Lorg/json/JSONObject;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/b$2$1;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/b$2$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/b$2$1$1;->a:Lcom/twidroid/fragments/e/b$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/b$2$1$1;->a:Lcom/twidroid/fragments/e/b$2$1;

    iget-object v0, v0, Lcom/twidroid/fragments/e/b$2$1;->a:Lcom/twidroid/fragments/e/b$2;

    iget-object v0, v0, Lcom/twidroid/fragments/e/b$2;->b:Lcom/twidroid/fragments/e/b;

    invoke-static {v0}, Lcom/twidroid/fragments/e/b;->b(Lcom/twidroid/fragments/e/b;)V

    return-void
.end method
