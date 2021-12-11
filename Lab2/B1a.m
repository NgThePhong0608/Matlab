function [dtk] = B1a(Tx, Gk, Ck)
dtk = Tx * 20/100 + Gk * 20/100 + Ck * 60/100;
end



