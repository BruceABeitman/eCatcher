.class public final Lcom/google/android/gms/internal/el;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private final c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/el;->g:I

    iput-object p1, p0, Lcom/google/android/gms/internal/el;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/gms/internal/el;->c:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/el;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/el;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/el;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(IFF)V
    .registers 11

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_10

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/el;->g:I

    iput p2, p0, Lcom/google/android/gms/internal/el;->d:F

    iput p3, p0, Lcom/google/android/gms/internal/el;->e:F

    iput p3, p0, Lcom/google/android/gms/internal/el;->f:F

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/el;->g:I

    if-eq v0, v5, :cond_f

    if-ne p1, v4, :cond_92

    iget v0, p0, Lcom/google/android/gms/internal/el;->e:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2f

    iput p3, p0, Lcom/google/android/gms/internal/el;->e:F

    :cond_1e
    :goto_1e
    iget v0, p0, Lcom/google/android/gms/internal/el;->e:F

    iget v1, p0, Lcom/google/android/gms/internal/el;->f:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41f0

    iget v2, p0, Lcom/google/android/gms/internal/el;->c:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_38

    iput v5, p0, Lcom/google/android/gms/internal/el;->g:I

    goto :goto_f

    :cond_2f
    iget v0, p0, Lcom/google/android/gms/internal/el;->f:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1e

    iput p3, p0, Lcom/google/android/gms/internal/el;->f:F

    goto :goto_1e

    :cond_38
    iget v0, p0, Lcom/google/android/gms/internal/el;->g:I

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/google/android/gms/internal/el;->g:I

    if-ne v0, v4, :cond_66

    :cond_40
    iget v0, p0, Lcom/google/android/gms/internal/el;->d:F

    sub-float v0, p2, v0

    const/high16 v1, 0x4248

    iget v2, p0, Lcom/google/android/gms/internal/el;->c:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_55

    iput p2, p0, Lcom/google/android/gms/internal/el;->d:F

    iget v0, p0, Lcom/google/android/gms/internal/el;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/el;->g:I

    :cond_55
    :goto_55
    iget v0, p0, Lcom/google/android/gms/internal/el;->g:I

    if-eq v0, v3, :cond_5d

    iget v0, p0, Lcom/google/android/gms/internal/el;->g:I

    if-ne v0, v6, :cond_84

    :cond_5d
    iget v0, p0, Lcom/google/android/gms/internal/el;->d:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_f

    iput p2, p0, Lcom/google/android/gms/internal/el;->d:F

    goto :goto_f

    :cond_66
    iget v0, p0, Lcom/google/android/gms/internal/el;->g:I

    if-eq v0, v3, :cond_6e

    iget v0, p0, Lcom/google/android/gms/internal/el;->g:I

    if-ne v0, v6, :cond_55

    :cond_6e
    iget v0, p0, Lcom/google/android/gms/internal/el;->d:F

    sub-float v0, p2, v0

    const/high16 v1, -0x3db8

    iget v2, p0, Lcom/google/android/gms/internal/el;->c:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_55

    iput p2, p0, Lcom/google/android/gms/internal/el;->d:F

    iget v0, p0, Lcom/google/android/gms/internal/el;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/el;->g:I

    goto :goto_55

    :cond_84
    iget v0, p0, Lcom/google/android/gms/internal/el;->g:I

    if-ne v0, v4, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/el;->d:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_f

    iput p2, p0, Lcom/google/android/gms/internal/el;->d:F

    goto/16 :goto_f

    :cond_92
    if-ne p1, v3, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/el;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_124

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c1

    :cond_e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_121

    :goto_f5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/gms/internal/el;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Ad Information"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Share"

    new-instance v3, Lcom/google/android/gms/internal/el$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/el$1;-><init>(Lcom/google/android/gms/internal/el;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Close"

    new-instance v2, Lcom/google/android/gms/internal/el$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/el$2;-><init>(Lcom/google/android/gms/internal/el;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_f

    :cond_121
    const-string v0, "No debug information"

    goto :goto_f5

    :cond_124
    const-string v0, "No debug information"

    goto :goto_f5
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gms/internal/el;->a(IFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/el;->a(IFF)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/el;->b:Ljava/lang/String;

    return-void
.end method
