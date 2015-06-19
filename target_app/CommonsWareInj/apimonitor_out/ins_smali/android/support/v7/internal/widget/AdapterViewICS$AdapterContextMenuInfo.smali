.class public Landroid/support/v7/internal/widget/AdapterViewICS$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterViewICS.java"
.implements Landroid/view/ContextMenu$ContextMenuInfo;
.field public id:J
.field public position:I
.field public targetView:Landroid/view/View;
.method public constructor <init>(Landroid/view/View;IJ)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterContextMenuInfo;->targetView:Landroid/view/View;
iput p2, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterContextMenuInfo;->position:I
iput-wide p3, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterContextMenuInfo;->id:J
return-void
.end method