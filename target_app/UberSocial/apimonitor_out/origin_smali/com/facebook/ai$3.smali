.class final Lcom/facebook/ai$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/aj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ai;->a(Lcom/facebook/aw;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/ak;)Lcom/facebook/ai;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ak;


# direct methods
.method constructor <init>(Lcom/facebook/ak;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ai$3;->a:Lcom/facebook/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/as;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ai$3;->a:Lcom/facebook/ak;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ai$3;->a:Lcom/facebook/ak;

    const-class v1, Lcom/facebook/c/i;

    invoke-static {p1, v1}, Lcom/facebook/ai;->a(Lcom/facebook/as;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/ak;->a(Ljava/util/List;Lcom/facebook/as;)V

    :cond_f
    return-void
.end method
