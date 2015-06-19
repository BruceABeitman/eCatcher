.class public Lcom/android/volley/AuthFailureError;
.super Lcom/android/volley/VolleyError;
.source "AuthFailureError.java"
.field private mResolutionIntent:Landroid/content/Intent;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/content/Intent;)V
.registers 2
invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V
iput-object p1, p0, Lcom/android/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;
return-void
.end method
.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
.registers 2
invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method
.method public getMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/android/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;
if-eqz v0, :cond_8
const-string/jumbo v0, "User needs to (re)enter credentials."
:goto_7
return-object v0
:cond_8
invoke-super {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method
.method public getResolutionIntent()Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lcom/android/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;
return-object v0
.end method