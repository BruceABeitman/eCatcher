.class final Lcom/mixpanel/android/mpmetrics/SurveyState$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 5
new-instance v0, Landroid/os/Bundle;
const-class v1, Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V
invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
new-instance v1, Lcom/mixpanel/android/mpmetrics/SurveyState;
const/4 v2, 0x0
invoke-direct {v1, v0, v2}, Lcom/mixpanel/android/mpmetrics/SurveyState;-><init>(Landroid/os/Bundle;B)V
return-object v1
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/mixpanel/android/mpmetrics/SurveyState;
return-object v0
.end method