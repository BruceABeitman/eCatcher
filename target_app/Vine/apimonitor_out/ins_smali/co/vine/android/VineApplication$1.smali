.class  Lco/vine/android/VineApplication$1;
.super Ljava/lang/Object;
.source "VineApplication.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/VineApplication;
.field final synthetic val$locale:Ljava/util/Locale;
.method constructor <init>(Lco/vine/android/VineApplication;Ljava/util/Locale;)V
.registers 3
iput-object p1, p0, Lco/vine/android/VineApplication$1;->this$0:Lco/vine/android/VineApplication;
iput-object p2, p0, Lco/vine/android/VineApplication$1;->val$locale:Ljava/util/Locale;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
invoke-static {}, Lco/vine/android/VineApplication;->access$000()Lco/vine/android/VineApplication;
move-result-object v0
iget-object v1, p0, Lco/vine/android/VineApplication$1;->val$locale:Ljava/util/Locale;
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->forceCustomLocale(Landroid/content/Context;Ljava/util/Locale;Z)V
return-void
.end method