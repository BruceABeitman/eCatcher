.class final Lcom/bbm/ui/widget/a;
.super Ljava/lang/Object;
.source "AppWidgetService.java"


# instance fields
.field a:I

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bbm/ui/widget/a;->a:I

    iput-object p2, p0, Lcom/bbm/ui/widget/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/bbm/ui/widget/a;

    iget-object v2, p0, Lcom/bbm/ui/widget/a;->b:Landroid/content/Context;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/bbm/ui/widget/a;->b:Landroid/content/Context;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bbm/ui/widget/a;->b:Landroid/content/Context;

    iget-object v3, p1, Lcom/bbm/ui/widget/a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget v2, p0, Lcom/bbm/ui/widget/a;->a:I

    iget v3, p1, Lcom/bbm/ui/widget/a;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/widget/a;->b:Landroid/content/Context;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bbm/ui/widget/a;->a:I

    add-int/2addr v0, v1

    return v0

    :cond_d
    iget-object v0, p0, Lcom/bbm/ui/widget/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method
