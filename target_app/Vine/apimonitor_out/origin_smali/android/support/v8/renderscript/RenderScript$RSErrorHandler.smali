.class public Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;
.super Ljava/lang/Object;
.source "RenderScript.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSErrorHandler"
.end annotation


# instance fields
.field protected mErrorMessage:Ljava/lang/String;

.field protected mErrorNum:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    return-void
.end method
