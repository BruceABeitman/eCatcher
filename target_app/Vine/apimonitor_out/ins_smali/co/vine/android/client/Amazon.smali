.class public Lco/vine/android/client/Amazon;
.super Ljava/lang/Object;
.source "Amazon.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getBucket(Landroid/content/Context;)Ljava/lang/String;
.registers 3
invoke-static {p0}, Lco/vine/android/util/BuildUtil;->getAmazonBucket(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method