.class public final Lcom/mapquest/android/maps/bp;
.super Ljava/lang/Object;
.source "OverlayItem.java"


# instance fields
.field protected a:Landroid/graphics/drawable/Drawable;

.field protected b:Lcom/mapquest/android/maps/s;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:I

.field f:I


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/s;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mapquest/android/maps/bp;->b:Lcom/mapquest/android/maps/s;

    iput-object p2, p0, Lcom/mapquest/android/maps/bp;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/mapquest/android/maps/bp;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v2, v1, [I

    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_28

    const/4 v1, 0x1

    const v3, 0x10100a7

    aput v3, v2, v0

    :goto_e
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_26

    add-int/lit8 v0, v1, 0x1

    const v3, 0x10100a1

    aput v3, v2, v1

    :goto_19
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_22

    const v1, 0x101009c

    aput v1, v2, v0

    :cond_22
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    :cond_26
    move v0, v1

    goto :goto_19

    :cond_28
    move v1, v0

    goto :goto_e
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lcom/mapquest/android/maps/bp;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mapquest/android/maps/bp;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/mapquest/android/maps/bp;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_9
    iget-object v0, p0, Lcom/mapquest/android/maps/bp;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final a()Lcom/mapquest/android/maps/s;
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/bp;->b:Lcom/mapquest/android/maps/s;

    return-object v0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/mapquest/android/maps/bp;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/bp;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/bp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/mapquest/android/maps/bp;->e:I

    return v0
.end method
