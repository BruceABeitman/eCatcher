.class public final Lcom/mapquest/android/maps/co;
.super Ljava/lang/Object;
.source "TrackballGestureDetector.java"


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# instance fields
.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:Lcom/mapquest/android/maps/cp;

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:J

.field q:J

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/mapquest/android/maps/co;->a:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/mapquest/android/maps/co;->b:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/mapquest/android/maps/co;->c:I

    sget v0, Lcom/mapquest/android/maps/co;->a:I

    sget v1, Lcom/mapquest/android/maps/co;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/mapquest/android/maps/co;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/mapquest/android/maps/co;->d:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/co;->r:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/mapquest/android/maps/co;->s:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/mapquest/android/maps/co;->l:Z

    iput-boolean v1, p0, Lcom/mapquest/android/maps/co;->m:Z

    iput-boolean v1, p0, Lcom/mapquest/android/maps/co;->n:Z

    iput-boolean v1, p0, Lcom/mapquest/android/maps/co;->o:Z

    iput-wide v2, p0, Lcom/mapquest/android/maps/co;->p:J

    iput-wide v2, p0, Lcom/mapquest/android/maps/co;->q:J

    new-instance v0, Lcom/mapquest/android/maps/cp;

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/cp;-><init>(Lcom/mapquest/android/maps/co;B)V

    iput-object v0, p0, Lcom/mapquest/android/maps/co;->k:Lcom/mapquest/android/maps/cp;

    return-void
.end method

.method static synthetic a(Lcom/mapquest/android/maps/co;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/co;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/mapquest/android/maps/co;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/co;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/mapquest/android/maps/co;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/co;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/mapquest/android/maps/co;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/co;->s:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/mapquest/android/maps/co;)V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v1, p0, Lcom/mapquest/android/maps/co;->m:Z

    iput-boolean v1, p0, Lcom/mapquest/android/maps/co;->n:Z

    iput-boolean v1, p0, Lcom/mapquest/android/maps/co;->o:Z

    iput-boolean v1, p0, Lcom/mapquest/android/maps/co;->l:Z

    iput v0, p0, Lcom/mapquest/android/maps/co;->e:F

    iput v0, p0, Lcom/mapquest/android/maps/co;->f:F

    iput v0, p0, Lcom/mapquest/android/maps/co;->g:F

    iput v0, p0, Lcom/mapquest/android/maps/co;->h:F

    iput v0, p0, Lcom/mapquest/android/maps/co;->j:F

    iput v0, p0, Lcom/mapquest/android/maps/co;->j:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mapquest/android/maps/co;->q:J

    return-void
.end method
