.class public final Lcom/userzoom/al;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/view/ScaleGestureDetector;

.field public b:Lcom/userzoom/as;

.field public c:Lcom/userzoom/as;

.field public final d:Lcom/userzoom/aw;

.field public final e:Lcom/userzoom/au;

.field public f:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/userzoom/an;

    invoke-direct {v0}, Lcom/userzoom/an;-><init>()V

    new-instance v0, Lcom/userzoom/aw;

    invoke-direct {v0}, Lcom/userzoom/aw;-><init>()V

    iput-object v0, p0, Lcom/userzoom/al;->d:Lcom/userzoom/aw;

    new-instance v0, Lcom/userzoom/au;

    invoke-direct {v0}, Lcom/userzoom/au;-><init>()V

    iput-object v0, p0, Lcom/userzoom/al;->e:Lcom/userzoom/au;

    new-instance v0, Lcom/userzoom/ao;

    invoke-direct {v0}, Lcom/userzoom/ao;-><init>()V

    iput-object v0, p0, Lcom/userzoom/al;->f:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    return-void
.end method
