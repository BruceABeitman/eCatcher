.class public final Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private static final EMPTY:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
.field public final count:I
.field public final isIncomplete:Z
.field public final loadMoreURI:Ljava/lang/String;
.field public final relevanceCutoff:Ljava/lang/Integer;
.field public final results:Ljava/util/List;
.field public final seeAll:Z
.method static constructor <clinit>()V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
move-object v3, v1
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;-><init>(Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->EMPTY:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
return-void
.end method
.method public constructor <init>(Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)V
.registers 10
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/search/b/b;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;
iput p2, p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->count:I
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->loadMoreURI:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->relevanceCutoff:Ljava/lang/Integer;
if-eqz p4, :cond_31
invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_31
move v0, v1
:goto_1a
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->seeAll:Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->loadMoreURI:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget v3, p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->count:I
if-ge v0, v3, :cond_33
:goto_2e
iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->isIncomplete:Z
return-void
:cond_31
move v0, v2
goto :goto_1a
:cond_33
move v1, v2
goto :goto_2e
.end method
.method public static fromNullable(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
.registers 1
if-nez p0, :cond_4
sget-object p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->EMPTY:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
:cond_4
return-object p0
.end method
.method final append(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
.registers 8
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;
invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/g;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/google/common/collect/g;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/g;
move-result-object v1
invoke-virtual {v1, v2}, Lcom/google/common/collect/g;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/g;
move-result-object v1
invoke-virtual {v1}, Lcom/google/common/collect/g;->a()Lcom/google/common/collect/ImmutableList;
move-result-object v1
iget v2, p1, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->count:I
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->relevanceCutoff:Ljava/lang/Integer;
iget-boolean v4, p1, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->seeAll:Z
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
iget-object v5, p1, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->loadMoreURI:Ljava/lang/String;
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;-><init>(Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)V
return-object v0
.end method