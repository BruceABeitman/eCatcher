.class public Lcom/twidroid/d/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field private static d:Ljava/lang/String;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/twidroid/d/u;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/twidroid/d/u;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/twidroid/d/u;->c:I

    const/4 v0, 0x0

    sput-object v0, Lcom/twidroid/d/u;->d:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/twidroid/d/u;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .registers 4

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/twidroid/d/u;->d:Ljava/lang/String;

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    const-wide v3, 0x3ff004189374bc6aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1f

    const-string v0, "h_"

    sput-object v0, Lcom/twidroid/d/u;->d:Ljava/lang/String;

    :cond_1c
    :goto_1c
    sget-object v0, Lcom/twidroid/d/u;->d:Ljava/lang/String;

    return-object v0

    :cond_1f
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_30

    const-string v0, "l_"

    sput-object v0, Lcom/twidroid/d/u;->d:Ljava/lang/String;

    goto :goto_1c

    :cond_30
    const-string v0, "m_"

    sput-object v0, Lcom/twidroid/d/u;->d:Ljava/lang/String;

    goto :goto_1c
.end method

.method public static a(Lcom/twidroid/ui/widgets/MyEditText;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/MyEditText;->setSelection(I)V

    return-void
.end method

.method public static a(Lcom/twidroid/ui/widgets/MyEditText;Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->c()V

    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .registers 6

    sget v0, Lcom/twidroid/d/u;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    const-wide v3, 0x3ff004189374bc6aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_20

    sget v0, Lcom/twidroid/d/u;->c:I

    sput v0, Lcom/twidroid/d/u;->e:I

    :cond_1d
    :goto_1d
    sget v0, Lcom/twidroid/d/u;->e:I

    return v0

    :cond_20
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_31

    sget v0, Lcom/twidroid/d/u;->a:I

    sput v0, Lcom/twidroid/d/u;->e:I

    goto :goto_1d

    :cond_31
    sget v0, Lcom/twidroid/d/u;->b:I

    sput v0, Lcom/twidroid/d/u;->e:I

    goto :goto_1d
.end method
