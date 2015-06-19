.class public Lcom/spotify/mobile/android/spotlets/common/adapter/e;
.super Lcom/spotify/mobile/android/spotlets/common/adapter/b;
.source "SourceFile"
.field private a:Ljava/util/List;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;-><init>(B)V
return-void
.end method
.method private constructor <init>(B)V
.registers 3
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/b;-><init>()V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->b(Ljava/util/List;)V
return-void
.end method
.method private b(Ljava/util/List;)V
.registers 2
if-eqz p1, :cond_5
:goto_2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a:Ljava/util/List;
return-void
:cond_5
new-instance p1, Ljava/util/ArrayList;
invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
goto :goto_2
.end method
.method public final a(Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->b(Ljava/util/List;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a()V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isEnabled(I)Z
.registers 3
const/4 v0, 0x1
return v0
.end method