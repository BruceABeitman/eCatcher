.class public Lco/vine/android/drawable/ColoredOvalDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "ColoredOvalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/drawable/ColoredOvalDrawable$ColoredOvalShape;
    }
.end annotation


# instance fields
.field public mColor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    new-instance v0, Lco/vine/android/drawable/ColoredOvalDrawable$ColoredOvalShape;

    invoke-direct {v0, p0}, Lco/vine/android/drawable/ColoredOvalDrawable$ColoredOvalShape;-><init>(Lco/vine/android/drawable/ColoredOvalDrawable;)V

    invoke-virtual {p0, v0}, Lco/vine/android/drawable/ColoredOvalDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .registers 2

    iput p1, p0, Lco/vine/android/drawable/ColoredOvalDrawable;->mColor:I

    return-void
.end method
