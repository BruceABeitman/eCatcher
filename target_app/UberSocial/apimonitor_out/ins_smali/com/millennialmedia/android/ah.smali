.class  Lcom/millennialmedia/android/ah;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/millennialmedia/android/cy;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/millennialmedia/android/af$1;)V
.registers 2
invoke-direct {p0}, Lcom/millennialmedia/android/ah;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/millennialmedia/android/ah;)Lcom/millennialmedia/android/cy;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/ah;->a:Lcom/millennialmedia/android/cy;
return-object v0
.end method
.method static synthetic a(Lcom/millennialmedia/android/ah;Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/cy;
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/ah;->a:Lcom/millennialmedia/android/cy;
return-object p1
.end method
.method public a(Lcom/millennialmedia/android/cy;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/ah;->a:Lcom/millennialmedia/android/cy;
return-void
.end method
.method public a()Z
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/ah;->a:Lcom/millennialmedia/android/cy;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
new-instance v0, Lcom/millennialmedia/android/ah$1;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/ah$1;-><init>(Lcom/millennialmedia/android/ah;)V
invoke-static {v0}, Lcom/millennialmedia/android/dk;->a(Ljava/lang/Runnable;)V
const/4 v0, 0x1
goto :goto_5
.end method
.method public b()Lcom/millennialmedia/android/cy;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/ah;->a:Lcom/millennialmedia/android/cy;
return-object v0
.end method