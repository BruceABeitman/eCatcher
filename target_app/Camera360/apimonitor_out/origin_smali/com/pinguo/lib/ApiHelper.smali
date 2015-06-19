.class public Lcom/pinguo/lib/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/lib/ApiHelper$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final AFTER_FROYO:Z

.field public static final AFTER_GINGERBREAD:Z

.field public static final AFTER_GINGERBREAD_MR1:Z

.field public static final AFTER_HONEYCOMB:Z

.field public static final AFTER_HONEYCOMB_MR1:Z

.field public static final AFTER_HONEYCOMB_MR2:Z

.field public static final AFTER_ICE_CREAM_SANDWICH:Z

.field public static final AFTER_ICE_CREAM_SANDWICH_MR1:Z

.field public static final AFTER_JELLY_BEAN:Z

.field public static final AFTER_JELLY_BEAN_MR1:Z

.field public static final AFTER_JELLY_BEAN_MR2:Z

.field public static final AFTER_KITKAT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_6e

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_FROYO:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_70

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v0, v3, :cond_72

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD_MR1:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_74

    move v0, v1

    :goto_24
    sput-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v0, v3, :cond_76

    move v0, v1

    :goto_2d
    sput-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB_MR1:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v0, v3, :cond_78

    move v0, v1

    :goto_36
    sput-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB_MR2:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_7a

    move v0, v1

    :goto_3f
    sput-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_7c

    move v0, v1

    :goto_48
    sput-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH_MR1:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_7e

    move v0, v1

    :goto_51
    sput-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_JELLY_BEAN:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_80

    move v0, v1

    :goto_5a
    sput-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_JELLY_BEAN_MR1:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_82

    move v0, v1

    :goto_63
    sput-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_JELLY_BEAN_MR2:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_84

    :goto_6b
    sput-boolean v1, Lcom/pinguo/lib/ApiHelper;->AFTER_KITKAT:Z

    return-void

    :cond_6e
    move v0, v2

    goto :goto_9

    :cond_70
    move v0, v2

    goto :goto_12

    :cond_72
    move v0, v2

    goto :goto_1b

    :cond_74
    move v0, v2

    goto :goto_24

    :cond_76
    move v0, v2

    goto :goto_2d

    :cond_78
    move v0, v2

    goto :goto_36

    :cond_7a
    move v0, v2

    goto :goto_3f

    :cond_7c
    move v0, v2

    goto :goto_48

    :cond_7e
    move v0, v2

    goto :goto_51

    :cond_80
    move v0, v2

    goto :goto_5a

    :cond_82
    move v0, v2

    goto :goto_63

    :cond_84
    move v1, v2

    goto :goto_6b
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
