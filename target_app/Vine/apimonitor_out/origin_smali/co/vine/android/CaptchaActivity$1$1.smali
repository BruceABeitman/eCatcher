.class Lco/vine/android/CaptchaActivity$1$1;
.super Landroid/os/AsyncTask;
.source "CaptchaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/CaptchaActivity$1;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lco/vine/android/CaptchaActivity$1;


# direct methods
.method constructor <init>(Lco/vine/android/CaptchaActivity$1;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/CaptchaActivity$1$1;->this$1:Lco/vine/android/CaptchaActivity$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/vine/android/CaptchaActivity$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    invoke-static {}, Lco/vine/android/AppImpl;->getInstance()Lco/vine/android/AppImpl;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/CaptchaActivity$1$1;->this$1:Lco/vine/android/CaptchaActivity$1;

    iget-object v1, v1, Lco/vine/android/CaptchaActivity$1;->this$0:Lco/vine/android/CaptchaActivity;

    invoke-virtual {v1}, Lco/vine/android/CaptchaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/AppImpl;->clearUploadCaptchas(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
