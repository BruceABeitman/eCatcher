.class public Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final a:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap$1;
invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap$1;-><init>()V
sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;->a:Ljava/util/HashMap;
return-void
.end method
.method public final a(Ljava/lang/Integer;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;->a:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public final a(Ljava/lang/Integer;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;->a:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 7
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;->a:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
:cond_33
invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
return-void
.end method