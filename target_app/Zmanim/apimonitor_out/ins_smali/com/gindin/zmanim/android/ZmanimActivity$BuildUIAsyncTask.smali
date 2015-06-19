.class  Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;
.super Landroid/os/AsyncTask;
.source "ZmanimActivity.java"
.field private final error:Lcom/gindin/zmanim/android/location/LocationError;
.field private final location:Lcom/gindin/zmanim/android/location/ZmanimLocation;
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
.method public constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
.registers 8
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
if-nez p2, :cond_c
new-instance p2, Lcom/gindin/zmanim/android/location/ZmanimLocation;
invoke-direct {p2}, Lcom/gindin/zmanim/android/location/ZmanimLocation;-><init>()V
:cond_c
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->personalPrefsManager:Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
invoke-static {p1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1000(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
move-result-object v1
sget-object v2, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->USE_ELEVATION:Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;
invoke-virtual {v2}, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->name()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_2e
new-instance v1, Lcom/gindin/zmanim/android/location/ZmanimLocation;
invoke-direct {v1, p2}, Lcom/gindin/zmanim/android/location/ZmanimLocation;-><init>(Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
iput-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->location:Lcom/gindin/zmanim/android/location/ZmanimLocation;
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->location:Lcom/gindin/zmanim/android/location/ZmanimLocation;
const-wide/16 v2, 0x0
invoke-virtual {v1, v2, v3}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->setElevation(D)V
:goto_2b
iput-object p3, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->error:Lcom/gindin/zmanim/android/location/LocationError;
return-void
:cond_2e
iput-object p2, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->location:Lcom/gindin/zmanim/android/location/ZmanimLocation;
goto :goto_2b
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.registers 8
iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->personalPrefsManager:Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
invoke-static {v3}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1000(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
move-result-object v3
sget-object v4, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->SHOW_SECONDS:Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;
invoke-virtual {v4}, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->name()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
new-instance v0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;
invoke-direct {v0, v2}, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;-><init>(Z)V
const/4 v1, 0x0
iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-static {v3}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$700(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
move-result-object v3
if-eqz v3, :cond_29
iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-static {v3}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$700(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
move-result-object v3
invoke-virtual {v3}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->getSecularDate()Ljava/util/Calendar;
move-result-object v1
:cond_29
iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
new-instance v4, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
iget-object v5, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->location:Lcom/gindin/zmanim/android/location/ZmanimLocation;
invoke-direct {v4, v5, v0, v1}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;-><init>(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/calendar/HebrewDateFormatter;Ljava/util/Calendar;)V
#setter for: Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-static {v3, v4}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$702(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
const/4 v3, 0x0
return-object v3
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->onPostExecute(Ljava/lang/Void;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Void;)V
.registers 6
const/4 v3, 0x0
:try_start_1
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->isCancelled()Z
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_77
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$000(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#setter for: Lcom/gindin/zmanim/android/ZmanimActivity;->buildUITask:Landroid/os/AsyncTask;
invoke-static {v0, v3}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1502(Lcom/gindin/zmanim/android/ZmanimActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
:goto_18
return-void
:cond_19
:try_start_19
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->location:Lcom/gindin/zmanim/android/location/ZmanimLocation;
#calls: Lcom/gindin/zmanim/android/ZmanimActivity;->buildHeader(Lnet/sourceforge/zmanim/util/GeoLocation;)V
invoke-static {v0, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1100(Lcom/gindin/zmanim/android/ZmanimActivity;Lnet/sourceforge/zmanim/util/GeoLocation;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->location:Lcom/gindin/zmanim/android/location/ZmanimLocation;
iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->error:Lcom/gindin/zmanim/android/location/LocationError;
#calls: Lcom/gindin/zmanim/android/ZmanimActivity;->buildFooter(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
invoke-static {v0, v1, v2}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1200(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->location:Lcom/gindin/zmanim/android/location/ZmanimLocation;
if-nez v0, :cond_42
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
const/4 v1, 0x0
#setter for: Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendarListener:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
invoke-static {v0, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1302(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
:try_end_33
.catchall {:try_start_19 .. :try_end_33} :catchall_77
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$000(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#setter for: Lcom/gindin/zmanim/android/ZmanimActivity;->buildUITask:Landroid/os/AsyncTask;
invoke-static {v0, v3}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1502(Lcom/gindin/zmanim/android/ZmanimActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
goto :goto_18
:cond_42
:try_start_42
new-instance v0, Lcom/gindin/zmanim/android/ZmanimDisplay;
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$700(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/gindin/zmanim/android/ZmanimDisplay;-><init>(Landroid/app/ListActivity;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
new-instance v1, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask$1;
invoke-direct {v1, p0}, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask$1;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;)V
#setter for: Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendarListener:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
invoke-static {v0, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1302(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$700(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
move-result-object v0
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendarListener:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
invoke-static {v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1300(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->addListener(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;)V
:try_end_68
.catchall {:try_start_42 .. :try_end_68} :catchall_77
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$000(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#setter for: Lcom/gindin/zmanim/android/ZmanimActivity;->buildUITask:Landroid/os/AsyncTask;
invoke-static {v0, v3}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1502(Lcom/gindin/zmanim/android/ZmanimActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
goto :goto_18
:catchall_77
move-exception v0
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-static {v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$000(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/app/ProgressDialog;
move-result-object v1
invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#setter for: Lcom/gindin/zmanim/android/ZmanimActivity;->buildUITask:Landroid/os/AsyncTask;
invoke-static {v1, v3}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1502(Lcom/gindin/zmanim/android/ZmanimActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
throw v0
.end method
.method protected onPreExecute()V
.registers 4
invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$000(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/app/ProgressDialog;
move-result-object v0
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
const v2, 0x7f050039
invoke-virtual {v1, v2}, Lcom/gindin/zmanim/android/ZmanimActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$000(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-nez v0, :cond_2a
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$000(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:cond_2a
return-void
.end method