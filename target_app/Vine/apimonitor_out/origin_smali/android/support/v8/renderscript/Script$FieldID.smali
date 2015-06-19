.class public final Landroid/support/v8/renderscript/Script$FieldID;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldID"
.end annotation


# instance fields
.field mN:Landroid/renderscript/Script$FieldID;

.field mScript:Landroid/support/v8/renderscript/Script;

.field mSlot:I


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    iput-object p3, p0, Landroid/support/v8/renderscript/Script$FieldID;->mScript:Landroid/support/v8/renderscript/Script;

    iput p4, p0, Landroid/support/v8/renderscript/Script$FieldID;->mSlot:I

    return-void
.end method
