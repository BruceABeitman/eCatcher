.class final Lcom/google/android/gms/internal/et;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/li;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a([B)Ljava/lang/String;
.registers 3
const/16 v0, 0xb
invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;)[B
.registers 3
const/4 v0, 0x2
invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
move-result-object v0
return-object v0
.end method