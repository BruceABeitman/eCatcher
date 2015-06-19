.class Lco/vine/android/LoginActivity$LoginSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/LoginActivity;


# direct methods
.method constructor <init>(Lco/vine/android/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/LoginActivity$LoginSessionListener;->this$0:Lco/vine/android/LoginActivity;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILco/vine/android/api/VineLogin;)V
    .registers 8

    iget-object v0, p0, Lco/vine/android/LoginActivity$LoginSessionListener;->this$0:Lco/vine/android/LoginActivity;

    invoke-virtual {v0, p3, p4, p5}, Lco/vine/android/LoginActivity;->completeLogin(ILjava/lang/String;I)V

    iget-object v0, p0, Lco/vine/android/LoginActivity$LoginSessionListener;->this$0:Lco/vine/android/LoginActivity;

    iget-object v0, v0, Lco/vine/android/LoginActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getEditions()V

    iget-object v0, p0, Lco/vine/android/LoginActivity$LoginSessionListener;->this$0:Lco/vine/android/LoginActivity;

    invoke-virtual {v0}, Lco/vine/android/LoginActivity;->dismissDialog()V

    return-void
.end method
