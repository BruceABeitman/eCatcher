.class public Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/spotify/mobile/android/ui/view/s;

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a:I

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a:I

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a:I

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->b:I

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->e:I

    return p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)J
    .registers 3

    iget-wide v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;J)J
    .registers 3

    iput-wide p1, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a:I

    return v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->e:I

    return v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->b:I

    return v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)Lcom/spotify/mobile/android/ui/view/s;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->c:Lcom/spotify/mobile/android/ui/view/s;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/16 v0, 0x64

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a:I

    return-void
.end method

.method public final a(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->setProgress(I)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/view/s;)V
    .registers 5

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->e:I

    if-nez p1, :cond_10

    invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->c:Lcom/spotify/mobile/android/ui/view/s;

    :goto_f
    return-void

    :cond_10
    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->c:Lcom/spotify/mobile/android/ui/view/s;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;-><init>(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_f
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->b:I

    return-void
.end method

.method public final c()F
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method
