.class public Lcom/gindin/util/Version;
.super Ljava/lang/Object;
.source "Version.java"
.field public static final androidCodeVersion:I = 0x54
.field public static final androidVersionName:Ljava/lang/String; = "3.3.84.296"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static isDevelopment()Z
.registers 2
const-string v0, "3.3.84.296"
const-string v1, "-DEV"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method