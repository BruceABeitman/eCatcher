.class final Lcom/crashlytics/android/F;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/FilenameFilter;
.field private synthetic a:Ljava/lang/String;
.method constructor <init>(Lcom/crashlytics/android/v;Ljava/lang/String;)V
.registers 3
iput-object p2, p0, Lcom/crashlytics/android/F;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/crashlytics/android/F;->a:Ljava/lang/String;
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method