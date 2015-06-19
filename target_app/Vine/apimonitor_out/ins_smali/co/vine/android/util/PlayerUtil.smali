.class public Lco/vine/android/util/PlayerUtil;
.super Ljava/lang/Object;
.source "PlayerUtil.java"
.field private static sAuthority:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getAuthority(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lco/vine/android/util/PlayerUtil;->sAuthority:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static setup(Ljava/lang/String;)V
.registers 1
sput-object p0, Lco/vine/android/util/PlayerUtil;->sAuthority:Ljava/lang/String;
return-void
.end method