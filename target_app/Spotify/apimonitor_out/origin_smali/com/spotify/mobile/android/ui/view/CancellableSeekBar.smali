.class public Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lcom/spotify/mobile/android/ui/view/c;

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/spotify/music/d;->m:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->f:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->c:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->b:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->a:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->d:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    const/4 v0, 0x1

    :try_start_10
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->incrementProgressBy(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_d

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/spotify/mobile/android/ui/view/b;)V
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/ui/view/c;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/view/c;-><init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->e:Lcom/spotify/mobile/android/ui/view/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->e:Lcom/spotify/mobile/android/ui/view/c;

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->c:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->a:Z

    if-eqz v2, :cond_1b

    if-eq v1, v0, :cond_12

    if-ne v1, v3, :cond_18

    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->a:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->b:Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_6d

    :cond_18
    iput-boolean v5, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->c:Z

    :goto_1a
    return v0

    :cond_1b
    if-nez v1, :cond_28

    const/4 v2, 0x1

    :try_start_1e
    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->b:Z

    monitor-enter p0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_6d

    :try_start_21
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->getProgress()I

    move-result v2

    iput v2, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->d:I

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_6a

    :cond_28
    :try_start_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->f:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_43

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->f:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_74

    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->a:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->e:Lcom/spotify/mobile/android/ui/view/c;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->e:Lcom/spotify/mobile/android/ui/view/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/c;->a()V

    :cond_53
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    monitor-enter p0
    :try_end_58
    .catchall {:try_start_28 .. :try_end_58} :catchall_6d

    :try_start_58
    iget v1, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->d:I

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->setProgress(I)V

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_71

    :try_start_5e
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->e:Lcom/spotify/mobile/android/ui/view/c;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->e:Lcom/spotify/mobile/android/ui/view/c;

    invoke-virtual {v1, p0}, Lcom/spotify/mobile/android/ui/view/c;->a(Landroid/widget/SeekBar;)V
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_6d

    :cond_67
    iput-boolean v5, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->c:Z

    goto :goto_1a

    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit p0

    throw v0
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v0

    iput-boolean v5, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->c:Z

    throw v0

    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit p0

    throw v0

    :cond_74
    if-ne v1, v0, :cond_79

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->b:Z

    :cond_79
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_6d

    move-result v0

    iput-boolean v5, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->c:Z

    goto :goto_1a
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 3

    if-nez p1, :cond_b

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->e:Lcom/spotify/mobile/android/ui/view/c;

    :goto_5
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->e:Lcom/spotify/mobile/android/ui/view/c;

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_b
    new-instance v0, Lcom/spotify/mobile/android/ui/view/c;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/view/c;-><init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->e:Lcom/spotify/mobile/android/ui/view/c;

    goto :goto_5
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->d:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_9

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
