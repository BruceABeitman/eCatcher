.class  Lcom/millennialmedia/android/ca;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private static final a:Ljava/lang/String; = "MMBanner"
.field private static final b:Ljava/lang/String; = "MMCachedVideo"
.field private static final c:Ljava/lang/String; = "MMCalendar"
.field private static final d:Ljava/lang/String; = "MMDevice"
.field private static final e:Ljava/lang/String; = "MMInlineVideo"
.field private static final f:Ljava/lang/String; = "MMInterstitial"
.field private static final g:Ljava/lang/String; = "MMMedia"
.field private static final h:Ljava/lang/String; = "MMNotification"
.field private static final i:Ljava/lang/String; = "MMSpeechkit"
.field private static final j:Ljava/lang/String; = "MMCommand"
.field private k:Ljava/lang/ref/WeakReference;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.field private o:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/millennialmedia/android/t;
invoke-direct {v0}, Lcom/millennialmedia/android/t;-><init>()V
invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Lcom/millennialmedia/android/t;)V
new-instance v0, Lcom/millennialmedia/android/u;
invoke-direct {v0}, Lcom/millennialmedia/android/u;-><init>()V
invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Lcom/millennialmedia/android/u;)V
new-instance v0, Lcom/millennialmedia/android/v;
invoke-direct {v0}, Lcom/millennialmedia/android/v;-><init>()V
invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Lcom/millennialmedia/android/v;)V
new-instance v0, Lcom/millennialmedia/android/w;
invoke-direct {v0}, Lcom/millennialmedia/android/w;-><init>()V
invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Lcom/millennialmedia/android/w;)V
new-instance v0, Lcom/millennialmedia/android/x;
invoke-direct {v0}, Lcom/millennialmedia/android/x;-><init>()V
invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Lcom/millennialmedia/android/x;)V
new-instance v0, Lcom/millennialmedia/android/y;
invoke-direct {v0}, Lcom/millennialmedia/android/y;-><init>()V
invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Lcom/millennialmedia/android/y;)V
new-instance v0, Lcom/millennialmedia/android/z;
invoke-direct {v0}, Lcom/millennialmedia/android/z;-><init>()V
invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Lcom/millennialmedia/android/z;)V
new-instance v0, Lcom/millennialmedia/android/ae;
invoke-direct {v0}, Lcom/millennialmedia/android/ae;-><init>()V
invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Lcom/millennialmedia/android/ae;)V
new-instance v0, Lcom/millennialmedia/android/af;
invoke-direct {v0}, Lcom/millennialmedia/android/af;-><init>()V
invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Lcom/millennialmedia/android/af;)V
return-void
.end method
.method constructor <init>(Lcom/millennialmedia/android/cq;Ljava/lang/String;)V
.registers 13
const/4 v9, 0x2
const/4 v8, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/ca;->k:Ljava/lang/ref/WeakReference;
:try_start_d
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v0
const-string v2, "\\."
invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v2, v0
if-eq v2, v9, :cond_1f
:goto_1e
:cond_1e
return-void
:cond_1f
const/4 v2, 0x0
aget-object v2, v0, v2
iput-object v2, p0, Lcom/millennialmedia/android/ca;->l:Ljava/lang/String;
const/4 v2, 0x1
aget-object v0, v0, v2
iput-object v0, p0, Lcom/millennialmedia/android/ca;->m:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/ca;->o:Ljava/util/Map;
const/16 v0, 0x3f
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
const-string v2, "&"
invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v3, v2
move v0, v1
:goto_44
if-ge v0, v3, :cond_1e
aget-object v4, v2, v0
const-string v5, "="
invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v5, v4
if-lt v5, v9, :cond_78
iget-object v5, p0, Lcom/millennialmedia/android/ca;->o:Ljava/util/Map;
const/4 v6, 0x0
aget-object v6, v4, v6
invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const/4 v7, 0x1
aget-object v7, v4, v7
invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v5, 0x0
aget-object v5, v4, v5
const-string v6, "callback"
invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_78
const/4 v5, 0x1
aget-object v4, v4, v5
invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/millennialmedia/android/ca;->n:Ljava/lang/String;
:try_end_78
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_78} :catch_7b
:cond_78
add-int/lit8 v0, v0, 0x1
goto :goto_44
:catch_7b
move-exception v0
const-string v2, "MMCommand"
const-string v3, "Exception while executing javascript call %s "
new-array v4, v8, [Ljava/lang/Object;
aput-object p2, v4, v1
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_1e
.end method
.method private a(Ljava/lang/String;)Lcom/millennialmedia/android/cf;
.registers 4
const/4 v0, 0x0
if-eqz p1, :cond_f
const-string v1, "MMBanner"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_10
invoke-static {}, Lcom/millennialmedia/android/am;->b()Lcom/millennialmedia/android/t;
move-result-object v0
:cond_f
:goto_f
return-object v0
:cond_10
const-string v1, "MMCachedVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1d
invoke-static {}, Lcom/millennialmedia/android/am;->c()Lcom/millennialmedia/android/u;
move-result-object v0
goto :goto_f
:cond_1d
const-string v1, "MMCalendar"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2a
invoke-static {}, Lcom/millennialmedia/android/am;->d()Lcom/millennialmedia/android/v;
move-result-object v0
goto :goto_f
:cond_2a
const-string v1, "MMDevice"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_37
invoke-static {}, Lcom/millennialmedia/android/am;->e()Lcom/millennialmedia/android/w;
move-result-object v0
goto :goto_f
:cond_37
const-string v1, "MMInlineVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_44
invoke-static {}, Lcom/millennialmedia/android/am;->f()Lcom/millennialmedia/android/x;
move-result-object v0
goto :goto_f
:cond_44
const-string v1, "MMInterstitial"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_51
invoke-static {}, Lcom/millennialmedia/android/am;->g()Lcom/millennialmedia/android/y;
move-result-object v0
goto :goto_f
:cond_51
const-string v1, "MMMedia"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5e
invoke-static {}, Lcom/millennialmedia/android/am;->h()Lcom/millennialmedia/android/z;
move-result-object v0
goto :goto_f
:cond_5e
const-string v1, "MMNotification"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6b
invoke-static {}, Lcom/millennialmedia/android/am;->i()Lcom/millennialmedia/android/ae;
move-result-object v0
goto :goto_f
:cond_6b
const-string v1, "MMSpeechkit"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_f
invoke-static {}, Lcom/millennialmedia/android/am;->j()Lcom/millennialmedia/android/af;
move-result-object v0
goto :goto_f
.end method
.method static synthetic a(Lcom/millennialmedia/android/ca;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/ca;->m:Ljava/lang/String;
return-object v0
.end method
.method private b()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/ca;->l:Ljava/lang/String;
const-string v1, "Bridge"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic b(Lcom/millennialmedia/android/ca;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/ca;->n:Ljava/lang/String;
return-object v0
.end method
.method  a()Z
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/ca;->m:Ljava/lang/String;
if-eqz v0, :cond_d
const-string v0, "resize"
iget-object v1, p0, Lcom/millennialmedia/android/ca;->m:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public run()V
.registers 6
const/4 v1, 0x0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/ca;->l:Ljava/lang/String;
if-eqz v0, :cond_ca
iget-object v0, p0, Lcom/millennialmedia/android/ca;->m:Ljava/lang/String;
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_d2
if-eqz v0, :cond_ca
:try_start_9
iget-object v0, p0, Lcom/millennialmedia/android/ca;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_109
iget-object v2, p0, Lcom/millennialmedia/android/ca;->l:Ljava/lang/String;
invoke-direct {p0, v2}, Lcom/millennialmedia/android/ca;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cf;
move-result-object v2
if-eqz v2, :cond_68
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/millennialmedia/android/cf;->c(Landroid/content/Context;)V
invoke-virtual {v2, v0}, Lcom/millennialmedia/android/cf;->a(Lcom/millennialmedia/android/cq;)V
iget-object v3, p0, Lcom/millennialmedia/android/ca;->o:Ljava/util/Map;
invoke-virtual {v0, v3}, Lcom/millennialmedia/android/cq;->a(Ljava/util/Map;)V
iget-object v0, p0, Lcom/millennialmedia/android/ca;->m:Ljava/lang/String;
iget-object v3, p0, Lcom/millennialmedia/android/ca;->o:Ljava/util/Map;
invoke-virtual {v2, v0, v3}, Lcom/millennialmedia/android/cf;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/cg;
:try_end_31
.catchall {:try_start_9 .. :try_end_31} :catchall_d2
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_31} :catch_88
move-result-object v0
:goto_32
move-object v1, v0
:goto_33
iget-object v0, p0, Lcom/millennialmedia/android/ca;->n:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_67
iget-object v0, p0, Lcom/millennialmedia/android/ca;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_67
if-nez v1, :cond_4d
iget-object v1, p0, Lcom/millennialmedia/android/ca;->m:Ljava/lang/String;
invoke-static {v1}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v1
:cond_4d
iget-object v2, v1, Lcom/millennialmedia/android/cg;->b:Ljava/lang/String;
if-nez v2, :cond_55
iget-object v2, p0, Lcom/millennialmedia/android/ca;->m:Ljava/lang/String;
iput-object v2, v1, Lcom/millennialmedia/android/cg;->b:Ljava/lang/String;
:cond_55
iget-object v2, v1, Lcom/millennialmedia/android/cg;->a:Ljava/lang/String;
if-nez v2, :cond_5f
invoke-direct {p0}, Lcom/millennialmedia/android/ca;->b()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/millennialmedia/android/cg;->a:Ljava/lang/String;
:cond_5f
new-instance v2, Lcom/millennialmedia/android/ca$1;
invoke-direct {v2, p0, v0, v1}, Lcom/millennialmedia/android/ca$1;-><init>(Lcom/millennialmedia/android/ca;Lcom/millennialmedia/android/cq;Lcom/millennialmedia/android/cg;)V
invoke-static {v2}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V
:cond_67
return-void
:cond_68
:try_start_68
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Service: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/millennialmedia/android/ca;->l:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " does not exist."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
:try_end_86
.catchall {:try_start_68 .. :try_end_86} :catchall_d2
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_86} :catch_88
move-result-object v0
goto :goto_32
:catch_88
move-exception v0
:try_start_89
const-string v2, "MMCommand"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Exception while executing javascript call "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/millennialmedia/android/ca;->m:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unexpected exception, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " received."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto/16 :goto_32
:cond_ca
const-string v0, "The service or service method was not defined."
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
:try_end_cf
.catchall {:try_start_89 .. :try_end_cf} :catchall_d2
move-result-object v1
goto/16 :goto_33
:catchall_d2
move-exception v0
move-object v2, v0
iget-object v0, p0, Lcom/millennialmedia/android/ca;->n:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_108
iget-object v0, p0, Lcom/millennialmedia/android/ca;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_108
if-nez v1, :cond_ee
iget-object v1, p0, Lcom/millennialmedia/android/ca;->m:Ljava/lang/String;
invoke-static {v1}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v1
:cond_ee
iget-object v3, v1, Lcom/millennialmedia/android/cg;->b:Ljava/lang/String;
if-nez v3, :cond_f6
iget-object v3, p0, Lcom/millennialmedia/android/ca;->m:Ljava/lang/String;
iput-object v3, v1, Lcom/millennialmedia/android/cg;->b:Ljava/lang/String;
:cond_f6
iget-object v3, v1, Lcom/millennialmedia/android/cg;->a:Ljava/lang/String;
if-nez v3, :cond_100
invoke-direct {p0}, Lcom/millennialmedia/android/ca;->b()Ljava/lang/String;
move-result-object v3
iput-object v3, v1, Lcom/millennialmedia/android/cg;->a:Ljava/lang/String;
:cond_100
new-instance v3, Lcom/millennialmedia/android/ca$1;
invoke-direct {v3, p0, v0, v1}, Lcom/millennialmedia/android/ca$1;-><init>(Lcom/millennialmedia/android/ca;Lcom/millennialmedia/android/cq;Lcom/millennialmedia/android/cg;)V
invoke-static {v3}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V
:cond_108
throw v2
:cond_109
move-object v0, v1
goto/16 :goto_32
.end method