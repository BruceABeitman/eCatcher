.class public final Lcom/tencent/map/b/m$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lcom/tencent/map/b/m;IIIIIIII)V
    .registers 12

    const v1, 0x7fffffff

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/map/b/m$b;->a:I

    iput v0, p0, Lcom/tencent/map/b/m$b;->b:I

    iput v0, p0, Lcom/tencent/map/b/m$b;->c:I

    iput v0, p0, Lcom/tencent/map/b/m$b;->d:I

    iput v0, p0, Lcom/tencent/map/b/m$b;->e:I

    iput v0, p0, Lcom/tencent/map/b/m$b;->f:I

    iput v1, p0, Lcom/tencent/map/b/m$b;->g:I

    iput v1, p0, Lcom/tencent/map/b/m$b;->h:I

    iput p2, p0, Lcom/tencent/map/b/m$b;->a:I

    iput p3, p0, Lcom/tencent/map/b/m$b;->b:I

    iput p4, p0, Lcom/tencent/map/b/m$b;->c:I

    iput p5, p0, Lcom/tencent/map/b/m$b;->d:I

    iput p6, p0, Lcom/tencent/map/b/m$b;->e:I

    iput p7, p0, Lcom/tencent/map/b/m$b;->f:I

    iput p8, p0, Lcom/tencent/map/b/m$b;->g:I

    iput p9, p0, Lcom/tencent/map/b/m$b;->h:I

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/m$b;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    :goto_7
    return-object v0

    :catch_8
    move-exception v0

    move-object v0, v1

    goto :goto_7
.end method