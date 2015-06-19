.class public Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener;
.super Ljava/lang/Object;
.source "CustomViewAbove.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnPageChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method
