with AUnit.Reporter.Text;
with AUnit.Run;
with Test_Suite;

procedure Tests is
   procedure Run is new AUnit.Run.Test_Runner (Test_Suite.Create_Test_Suite);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end Tests;
