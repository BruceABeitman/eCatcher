.class public Lco/vine/android/client/Session;
.super Ljava/lang/Object;
.source "Session.java"
.field private mAvatarUrl:Ljava/lang/String;
.field private mLastLogin:J
.field private mLoginEmail:Ljava/lang/String;
.field private mLoginStatus:Lco/vine/android/client/Session$LoginStatus;
.field private mName:Ljava/lang/String;
.field private mSessionKey:Ljava/lang/String;
.field private mUser:Lco/vine/android/api/VineUser;
.field private mUserId:J
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/client/Session;->mSessionKey:Ljava/lang/String;
iput-wide p2, p0, Lco/vine/android/client/Session;->mUserId:J
iput-object p4, p0, Lco/vine/android/client/Session;->mName:Ljava/lang/String;
sget-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGED_OUT:Lco/vine/android/client/Session$LoginStatus;
iput-object v0, p0, Lco/vine/android/client/Session;->mLoginStatus:Lco/vine/android/client/Session$LoginStatus;
iput-object p5, p0, Lco/vine/android/client/Session;->mAvatarUrl:Ljava/lang/String;
return-void
.end method
.method public getAvatarUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/Session;->mAvatarUrl:Ljava/lang/String;
return-object v0
.end method
.method public getLoginEmail()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/Session;->mLoginEmail:Ljava/lang/String;
return-object v0
.end method
.method public getLoginStatus()Lco/vine/android/client/Session$LoginStatus;
.registers 2
iget-object v0, p0, Lco/vine/android/client/Session;->mLoginStatus:Lco/vine/android/client/Session$LoginStatus;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/Session;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getSessionKey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/Session;->mSessionKey:Ljava/lang/String;
return-object v0
.end method
.method public getUserId()J
.registers 3
iget-wide v0, p0, Lco/vine/android/client/Session;->mUserId:J
return-wide v0
.end method
.method public isLoggedIn()Z
.registers 3
iget-object v0, p0, Lco/vine/android/client/Session;->mLoginStatus:Lco/vine/android/client/Session$LoginStatus;
sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;
invoke-virtual {v0, v1}, Lco/vine/android/client/Session$LoginStatus;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public logout()V
.registers 4
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/client/Session;->mLoginEmail:Ljava/lang/String;
iput-object v2, p0, Lco/vine/android/client/Session;->mSessionKey:Ljava/lang/String;
iput-object v2, p0, Lco/vine/android/client/Session;->mName:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/client/Session;->mUserId:J
iput-object v2, p0, Lco/vine/android/client/Session;->mAvatarUrl:Ljava/lang/String;
sget-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGED_OUT:Lco/vine/android/client/Session$LoginStatus;
iput-object v0, p0, Lco/vine/android/client/Session;->mLoginStatus:Lco/vine/android/client/Session$LoginStatus;
return-void
.end method
.method public setAvatarUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lco/vine/android/client/Session;->mAvatarUrl:Ljava/lang/String;
return-void
.end method
.method public setLoginEmail(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lco/vine/android/client/Session;->mLoginEmail:Ljava/lang/String;
return-void
.end method
.method public setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V
.registers 2
iput-object p1, p0, Lco/vine/android/client/Session;->mLoginStatus:Lco/vine/android/client/Session$LoginStatus;
return-void
.end method
.method public setName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lco/vine/android/client/Session;->mName:Ljava/lang/String;
return-void
.end method
.method public setSessionKey(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lco/vine/android/client/Session;->mSessionKey:Ljava/lang/String;
return-void
.end method
.method public setUserId(J)V
.registers 3
iput-wide p1, p0, Lco/vine/android/client/Session;->mUserId:J
return-void
.end method