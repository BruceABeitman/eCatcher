.class public Lco/vine/android/PostOptionsDialogActivity$Result;
.super Ljava/lang/Object;
.source "PostOptionsDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/PostOptionsDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final request:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/PostOptionsDialogActivity$Result;->request:Ljava/lang/String;

    iput-object p2, p0, Lco/vine/android/PostOptionsDialogActivity$Result;->intent:Landroid/content/Intent;

    return-void
.end method
