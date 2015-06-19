.class public abstract Lcom/loopj/android/http/k;
.super Lcom/loopj/android/http/e;
.source "SourceFile"
.field static final synthetic b:Z
.field protected final a:Ljava/io/File;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/loopj/android/http/k;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/loopj/android/http/k;->b:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method