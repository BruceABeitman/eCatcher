.class final Lcom/tencent/map/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/map/b/f;


# direct methods
.method constructor <init>(Lcom/tencent/map/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/map/b/g;->a:Lcom/tencent/map/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/map/b/g;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;)V

    return-void
.end method
