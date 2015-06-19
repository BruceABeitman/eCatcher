.class public Lcom/glympse/android/api/GlympseTools;
.super Ljava/lang/Object;
.source "GlympseTools.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static guessInviteType(Ljava/lang/String;)I
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/LibFactory;->guessInviteType(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static inviteTypeEnumToString(I)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/LibFactory;->inviteTypeEnumToString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static inviteTypeStringToEnum(Ljava/lang/String;)I
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/LibFactory;->inviteTypeStringToEnum(Ljava/lang/String;)I
move-result v0
return v0
.end method