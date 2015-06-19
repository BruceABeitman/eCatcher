.class public abstract Lcom/spotify/mobile/android/ui/adapter/b;
.super Landroid/support/v4/widget/b;
.source "SourceFile"


# instance fields
.field protected final j:I

.field protected k:Lcom/spotify/mobile/android/ui/adapter/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/spotify/mobile/android/ui/adapter/c;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/support/v4/widget/b;-><init>(Landroid/content/Context;)V

    if-lez p2, :cond_10

    const/4 v0, 0x1

    :goto_6
    const-string v1, "Each row should have at least one item"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iput p2, p0, Lcom/spotify/mobile/android/ui/adapter/b;->j:I

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/adapter/b;->k:Lcom/spotify/mobile/android/ui/adapter/c;

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/d;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/ui/adapter/d;-><init>(Lcom/spotify/mobile/android/ui/adapter/b;Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract a(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6

    instance-of v0, p1, Lcom/spotify/mobile/android/ui/adapter/d;

    const-string v1, "View must be of type Row."

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    check-cast p1, Lcom/spotify/mobile/android/ui/adapter/d;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/adapter/b;->j:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, p3, v0}, Lcom/spotify/mobile/android/ui/adapter/d;->a(Landroid/database/Cursor;I)V

    return-void
.end method

.method public abstract a(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method public getCount()I
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/b;->a()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/b;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/adapter/b;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_7
.end method
