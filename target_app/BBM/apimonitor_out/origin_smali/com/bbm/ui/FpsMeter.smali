.class public Lcom/bbm/ui/FpsMeter;
.super Lcom/bbm/ui/CustomView;
.source "FpsMeter.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private final f:Landroid/view/View$OnTouchListener;

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/FpsMeter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/FpsMeter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const-wide/16 v2, 0x0

    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-wide v2, p0, Lcom/bbm/ui/FpsMeter;->b:J

    iput-wide v2, p0, Lcom/bbm/ui/FpsMeter;->d:J

    iput-wide v2, p0, Lcom/bbm/ui/FpsMeter;->e:J

    new-instance v0, Lcom/bbm/ui/ck;

    invoke-direct {v0, p0}, Lcom/bbm/ui/ck;-><init>(Lcom/bbm/ui/FpsMeter;)V

    iput-object v0, p0, Lcom/bbm/ui/FpsMeter;->f:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/FpsMeter;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/FpsMeter;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/bbm/ui/FpsMeter;->a:Landroid/widget/TextView;

    const v1, -0xaa9901

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbm/ui/FpsMeter;->f:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/FpsMeter;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/bbm/ui/FpsMeter;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/bbm/ui/FpsMeter;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/FpsMeter;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/bbm/ui/FpsMeter;->a()V

    return-void
.end method

.method private getFps()D
    .registers 7

    iget-wide v0, p0, Lcom/bbm/ui/FpsMeter;->e:J

    iget-wide v2, p0, Lcom/bbm/ui/FpsMeter;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bbm/ui/FpsMeter;->b:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    long-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bbm/ui/FpsMeter;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bbm/ui/FpsMeter;->c:J

    iget-wide v0, p0, Lcom/bbm/ui/FpsMeter;->c:J

    iput-wide v0, p0, Lcom/bbm/ui/FpsMeter;->e:J

    iget-wide v0, p0, Lcom/bbm/ui/FpsMeter;->e:J

    iput-wide v0, p0, Lcom/bbm/ui/FpsMeter;->g:J

    iput-wide v2, p0, Lcom/bbm/ui/FpsMeter;->d:J

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    const-wide/high16 v4, 0x4024

    iget-wide v0, p0, Lcom/bbm/ui/FpsMeter;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bbm/ui/FpsMeter;->b:J

    iget-wide v0, p0, Lcom/bbm/ui/FpsMeter;->e:J

    iput-wide v0, p0, Lcom/bbm/ui/FpsMeter;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bbm/ui/FpsMeter;->e:J

    iget-wide v0, p0, Lcom/bbm/ui/FpsMeter;->e:J

    iget-wide v2, p0, Lcom/bbm/ui/FpsMeter;->g:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bbm/ui/FpsMeter;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/bbm/ui/FpsMeter;->e:J

    iget-wide v2, p0, Lcom/bbm/ui/FpsMeter;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bbm/ui/FpsMeter;->d:J

    :cond_25
    invoke-direct {p0}, Lcom/bbm/ui/FpsMeter;->getFps()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    iget-object v2, p0, Lcom/bbm/ui/FpsMeter;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v0, v0

    div-double/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fps, worst frame = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/bbm/ui/FpsMeter;->d:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Lcom/bbm/ui/CustomView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/bbm/ui/FpsMeter;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Lcom/bbm/ui/CustomView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/bbm/ui/FpsMeter;->a:Landroid/widget/TextView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method
